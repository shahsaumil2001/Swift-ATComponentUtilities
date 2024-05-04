Pod::Spec.new do |s|
    s.name             = 'ATComponentUtilities'  
    s.version          = '0.0.1'  
    s.summary          = 'Custom pod creation for view utilities' 
    s.description      = <<-DESC
    TODO: Add long description of the pod here.
                           DESC
    
    s.homepage         = 'https://github.com/shahsaumil2001/Swift-ATComponentUtilities' 
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'username' => 'shahsaumil20011991@gmail.com' } 
    s.source           = { :git => 'https://github.com/shahsaumil2001/Swift-ATComponentUtilities.git', :tag => s.version.to_s } 
    s.ios.deployment_target = '15.0'
    s.source_files = 'ATComponentUtilities/**/*' 
    end