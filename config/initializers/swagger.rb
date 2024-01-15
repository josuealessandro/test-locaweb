class Swagger::Docs::Config
  def self.base_api_controller
    ActionController::API
  end
end

Swagger::Docs::Config.register_apis({
  '1.0' => {
    controller_base_path: '',
    api_file_path: 'public/swagger/',
    base_path: 'http://localhost:3000',
    clean_directory: true,
  }
})