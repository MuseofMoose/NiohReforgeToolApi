class Api::V1::WeaponAttributesController < ApplicationController
	def get_all
		weapon_attributes = WeaponAttribute.all
		render json: build_success_response(weapon_attributes)
	end

	def get_by_id
		weapon_attribute = WeaponAttribute.find_by!(id: params[:id], active: true)
		render json: build_success_response(weapon_attribute), except: [:active, :created_at, :updated_at]
	end

	#create function to fetch replacable attributes based on weapon's current attributes
	#and the attribute that is being rolled (since it won't roll the same attribute)
	def get_rollable_attributes
		#expected params
		#the ids of the current weapon attributes
		existing_attributes_array = params[:existing_attributes_array]
		rolled_attribute = params[:rolled_attribute]

		#fetch weapon attributes that don't conflict with the existing attributes
		#and are not equivalent to the rolled attribute

		#create function to fetch sub_group list based on existing attributes
		#create function to fetch singleton exclusions for the rolled_attribute
		#and any attributes that belong to the no conflicts group (or special exception)

		rollable_attributes_array = WeaponAttribute.where("id != ?", params[:ids])
	end

	private

end
