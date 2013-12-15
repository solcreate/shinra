def self.symbolize!(hash)
  hash.symbolize_keys!
  hash.each_value do |value|
    self.symbolize!(value) if value.kind_of?(Hash)
  end
end
models = YAML.load_file("#{Rails.root}/config/validations.yml")
self.symbolize!(models)
models.each do |model, columns|
  columns.each do |column, methods|
    methods.each do |method, validations|
      validations.each do |validation, value|
        klass = model.to_s.camelcase.constantize
        klass.class_eval("#{method} :#{column}, #{validation}: #{value}")
      end
    end
  end
end