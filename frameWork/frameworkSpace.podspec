
Pod::Spec.new do |spec|


  spec.name         = "frameworkSpace"
  spec.version      = "0.0.1"
  spec.summary      = "A short description of frameworkSpace."


  spec.description  = <<-DESC
                  描述
                   DESC

  spec.homepage     = "https://github.com/18513346093/framework"


  spec.license      = "MIT"

  spec.author             = { "孙永帅" => "18514436093@163.com" }

  spec.source       = { :git => "https://github.com/18513346093/framework.git", :tag => "{0.0.1}" }

 spec.ios.deployment_target = '8.0' # 支持的pod最低版本
  spec.platform     = :ios, '8.0'            # 项目支持平台及版本
  spec.requires_arc = true                   #是否使用ARC，如果指定具体文件，则具体的问题使用ARC
  
  spec.vendored_frameworks = 'firstFrameWork/*.{framework}' # 放入封装好的.framework地址
  spec.resource     = 'firstFrameWork/*.bundle' # .bundle资源文件
  spec.source_files = 'firstFrameWork/firstFrameWork/**/*'     # 代码源文件地址，**/*表示Classes目录及其子目录下所有文件，如果有多个目录下则用逗号分开，如果需要在项目中分组显示，这里也要做相应的设置
  
spec.resource_bundles = {
    'PodTestLibrary' => ['firstFrameWorkfirstFrameWork/Assets/*.png']
  }                                       #资源文件地址

spec.public_header_files = 'frameworkSDK/Classes/**/*.h'   # 公开头文件地址 
 
spec.libraries = 'sqlite3'                 #引入libsqlite3.tbd库

end
