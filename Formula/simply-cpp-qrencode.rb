class SimplyCppQrencode < Formula
    desc "QR codes for simply-cpp: text or bytes to SVG or PNG, with no image library"
    homepage "https://github.com/roelofrossouw/simply-cpp-qrencode"
    url "https://github.com/roelofrossouw/simply-cpp-qrencode/archive/refs/tags/v1.3.1.tar.gz"
    sha256 "87c5cb7770616a5b5de22803a106e5755f80c4244ee796f59ca984ada0fd39ab"
    license "Apache-2.0"

    depends_on "cmake" => :build
    depends_on "simply-cpp"

    def install
        system "cmake", "-S", ".", "-B", "build", "-DSC_QRENCODE_BUILD_TESTS=OFF", *std_cmake_args
        system "cmake", "--build", "build"
        system "cmake", "--install", "build"
    end
end
