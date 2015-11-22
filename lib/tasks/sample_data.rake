namespace :db do
  task :populate => :environment do
    Rake::Task['db:reset'].invoke
    default_values
  end
end

def default_values
  default_cameras
  default_mapping_methods
end

def default_cameras
  Camera.create!( :name => "PHANTOM VISION FC200   ", :lens_profile => true )
  Camera.create!( :name => "INSPIRE 1 FC350", :lens_profile => true )
  Camera.create!( :name => "PHANTOM 3 FC300S", :lens_profile => true )
  Camera.create!( :name => "PHANTOM 3 FC300X", :lens_profile => true )
  Camera.create!( :name => "HERO", :lens_profile => true )
  Camera.create!( :name => "HERO3+ Black Edition", :lens_profile => true )
  Camera.create!( :name => "Hero3-Black Edition", :lens_profile => true )
  Camera.create!( :name => "Hero3-Silver Edition", :lens_profile => true )
  Camera.create!( :name => "Hero3-White Edition", :lens_profile => true )
  Camera.create!( :name => "HERO4 Black Edition", :lens_profile => true )
  Camera.create!( :name => "HERO4 Silver Edition", :lens_profile => true )
end

def default_mapping_methods
  MappingMethod.create!( :name => "multirow" )
  MappingMethod.create!( :name => "prealigned" )
  MappingMethod.create!( :name => "linearmatch" )
end
