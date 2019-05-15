class ProfileView < Visualization
  after_initialize do
    self.type = 'ProfileView'
  end
end
