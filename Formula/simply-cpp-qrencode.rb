class SimplyCppQrencode < Formula
    desc "QR codes for simply-cpp: text or bytes to SVG or PNG, with no image library"
    homepage "https://github.com/roelofrossouw/simply-cpp-qrencode"
    url "https://github.com/roelofrossouw/simply-cpp-qrencode/archive/refs/tags/v4.0.0.tar.gz"
    sha256 "53457eb197d9eb42bb232b076906533810b6f440c7de76d73abd0a6b126e13f2"
    license "Apache-2.0"

    depends_on "cmake" => :build
    depends_on "simply-cpp"

    def install
        system "cmake", "-S", ".", "-B", "build", "-DSC_QRENCODE_BUILD_TESTS=OFF", *std_cmake_args
        system "cmake", "--build", "build"
        system "cmake", "--install", "build"
    end
end
