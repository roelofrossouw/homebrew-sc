class simply-cpp < Formula
   desc "Simply C++ framework"
   homepage "https://github.com/roelofrossouw/simply-cpp"

   if Hardware::CPU.arm?
     url "https://apt.roelof.co.za/hb/macos/simply-cpp-1.1.4-arm64.tar.gz"
     sha256 "..."
   else
     url "https://apt.roelof.co.za/hb/macos/simply-cpp-1.1.4-x86_64.tar.gz"
     sha256 "..."
   end

   def install
     prefix.install Dir["*"]
   end
 end
