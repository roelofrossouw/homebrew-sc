class SimplyCppQrencode < Formula
    desc "QR codes for simply-cpp: text or bytes to SVG or PNG, with no image library"
    homepage "https://github.com/roelofrossouw/simply-cpp-qrencode"
    url "https://github.com/roelofrossouw/simply-cpp-qrencode/archive/refs/tags/v5.0.0.tar.gz"
    sha256 "5c74fc8ef7c2735b449fe7e5083b12df6dbff8fd9c4f5cbc1ee59295c5a359bc"
    license "Apache-2.0"

    depends_on "cmake" => :build
    depends_on "simply-cpp"
    depends_on "simply-cpp-geometry"

    def install
        system "cmake", "-S", ".", "-B", "build", "-DSC_QRENCODE_BUILD_TESTS=OFF", *std_cmake_args
        system "cmake", "--build", "build"
        system "cmake", "--install", "build"
    end
end
