class SimplyCppWeb < Formula
    desc "C++20 web document formats: XML now (on libxml2), HTML, SVG and CSS to follow, read through STL-style ranges"
    homepage "https://github.com/roelofrossouw/simply-cpp-web"
    url "https://github.com/roelofrossouw/simply-cpp-web/archive/refs/tags/v3.1.1.tar.gz"
    sha256 "1efeda6a14d8392a33c702f7c4b86c8250ae7640d88841fb85734279a66e1089"
    license "Apache-2.0"

    depends_on "cmake" => :build
    depends_on "simply-cpp"
    depends_on "md4c"

    def install
        system "cmake", "-S", ".", "-B", "build", "-DSC_WEB_BUILD_TESTS=OFF", *std_cmake_args
        system "cmake", "--build", "build"
        system "cmake", "--install", "build"
    end
end
