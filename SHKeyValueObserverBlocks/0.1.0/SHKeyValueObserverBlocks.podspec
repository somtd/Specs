Pod::Spec.new do |s|
  name    = "SHKeyValueObserverBlocks"
  url     = "https://github.com/PodFactory/#{name}"
  git_url = "#{url}.git"
  s.name         = name
  s.version      = "0.1.0"
  s.summary      = "Prefixed self removing Key Value Observers with Blocks."
  s.description  = <<-DESC

                    Key Value Observing with blocks on top of NSObject.
                    Blocks are hold with a weak reference so you don't have to cleanup when your object is gone.
  
                    * No need to clean up after - Blocks and observers are self maintained.
                    * Weak referenced blocks.
                    * Prefixed selectors.
                    * Works with existing codebase that uses old fashioned observing delegate calls. 
                    * Configurable to remove the swizzled auto cleanup
                    * Remove blocks by keypaths or identifiers
                    * Remove blocks by keypaths and identifiers
                    * Minimum clutter on top of the public interface. 
                    
                    DESC

  s.homepage     = url
  s.license      = 'MIT'
  s.author       = { "Seivan Heidari" => "seivan.heidari@icloud.com" }
  
  s.source       = { :git => git_url, :tag => s.version.to_s }
  

  s.platform  = :ios, "6.0"
  s.platform  = :osx, "10.8"

  s.source_files = "#{name}/**/*.{h,m}"
  s.requires_arc = true
end
