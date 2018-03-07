class Api::TripsController < ApplicationController
  before_action :set_trip, only: [:show,:update,:destroy]

def index
  trips = Trip.all
  render json: trips, status: 200
end

def create
  trip = Trip.new(trip_params)
  if Location.where('lower(city) = ?', params["location"]["city"].downcase).length > 0
    location = Location.where('lower(city) = ?', params["location"]["city"].downcase).first
  else
    location = Location.new(city:params["location"]["city"],state:params["location"]["state"],country:params["location"]["country"])
    url = "https://maps.googleapis.com/maps/api/geocode/json?address=#{location.city}+#{location.state}+#{location.country}&key=AIzaSyAv6zJzukQ3qrRUXJ1fGrHwd-6jq0hb-u0"
    headers = {Accept:'application/json'}
    response = RestClient.get(url, headers)
    body = response.body
    json = JSON.parse(body)
    byebug
    json = json["results"][0]["geometry"]["location"]
    location.lat = json["lat"]
    location.long = json["lng"]
    location.save
  end
  trip.location_id = location.id
  trip.save
  render json: trip, status: 201
end

def update
  @trip.update(trip_params)
  if Location.where('lower(city) = ?', params["location"]["city"].downcase).length > 0
    loc = Location.where('lower(city) = ?', params["location"]["city"].downcase).first
  else
    loc = Location.create(city:params["location"]["city"],state:params["location"]["state"],country:params["location"]["country"])
  end
  @trip.update(location_id:loc.id)
  render json: @trip, status: 200
end

def destroy
  tripId = @trip.id
  @trip.destroy
  render json: {message:"Zap! trip deleted", tripId:tripId}
end

def show
  render json: @trip, status: 200
end

private
def trip_params
  params.require(:trip).permit(:name, :description, :location, :user_id, :start_date, :end_date, :people_involved, :photos, :events, :work, :leisure, :beach, :family, :friends, :location_id)
end

def set_trip
  @trip = Trip.find(params[:id])
end


end
