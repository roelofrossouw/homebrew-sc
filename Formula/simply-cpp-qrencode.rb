class SimplyCppQrencode < Formula
    desc "QR codes for simply-cpp: text or bytes to SVG or PNG, with no image library"
    homepage "https://github.com/roelofrossouw/simply-cpp-qrencode"
    url "https://github.com/roelofrossouw/simply-cpp-qrencode/archive/refs/tags/v1.3.0.tar.gz"
    sha256 "316b0745a58624aec50c86940ea3846c35d0f36c695a7c54a6b7546ab6e8a4f3"
    license "Apache-2.0"

    depends_on "cmake" => :build
    depends_on "simply-cpp"

    def install
        system "cmake", "-S", ".", "-B", "build", "-DSC_QRENCODE_BUILD_TESTS=OFF", *std_cmake_args
        system "cmake", "--build", "build"
        system "cmake", "--install", "build"
    end
end
