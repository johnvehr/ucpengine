require_dependency "ucpengine/application_controller"

module Ucpengine
  class EntriesController < ApplicationController
    before_action :set_entry, only: [:show, :edit, :update, :destroy]

   def index
     @entries = Entry.where(content_type: content_class)
     @terms_of_use = Entry.where(service_type: 'Terms of Use')
     @third_party_terms_of_use = Entry.where(service_type: 'Third Party Terms of Use')
     @privacy_policy = Entry.where(service_type: 'Privacy Policy')
     @glba_privacy_policy = Entry.where(service_type: 'GLBA Privacy Policy')
   end

   def show
   end

   def new
     @entry = Entry.new(content_type: content_class)
   end

   def edit
   end

   def create
     @entry = Entry.new(entry_params)

     if @entry.save
       #redirect_to content_entry_path(@entry), notice: 'Entry was successfully created.'
       redirect_to content_entries_path, notice: 'Entry was successfully created.'
     else
       render :new
     end
   end

   def update
     if @entry.update(entry_params)
       redirect_to content_entry_path(@entry), notice: 'Entry was successfully updated.'
     else
       render :edit
     end
   end

   def destroy
     @entry.destroy
     redirect_to content_entries_path, notice: 'Entry was successfully destroyed.'
   end

   private

   def set_entry
     @entry = Entry.find(params[:id])
   end

   def entry_params
     allowed_attrs = %i(id content_type service_body service_type version slug published_at)
       .concat(content_class.constantize.content_attributes.keys)

     params.require(:entry).permit(*allowed_attrs)
   end

   def content_class
     @content_class ||= params[:content_class].classify
   end
   helper_method :content_class
  end
end
