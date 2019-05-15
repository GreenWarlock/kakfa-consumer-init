class ArticleView < Visualization
  after_initialize do
    self.type = 'ArticleView'
  end
end
