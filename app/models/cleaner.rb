module Cleaner
  def self.append_features( base )
    base.before_save do |model|
      model.html = model.html.gsub( /<(.|\n)*?>/, '' )\
        if model.respond_to?( :html )
    end
  end
end