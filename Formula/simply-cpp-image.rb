class SimplyCppImage < Formula
    desc "C++20 wrapper around OpenCV for loading, saving, and processing images"
    homepage "https://github.com/roelofrossouw/simply-cpp-image"
    url "https://github.com/roelofrossouw/simply-cpp-image/archive/refs/tags/v4.0.1.tar.gz"
    sha256 "47f117ec3cef890bedfc183e4f3604b4befa1d3574bbfd78f2bbedaf75f89424"
    license "Apache-2.0"

    depends_on "cmake" => :build
    depends_on "simply-cpp"
    depends_on "simply-cpp-graphics"
    depends_on "opencv"

    def install
        system "cmake", "-S", ".", "-B", "build", *std_cmake_args
        system "cmake", "--build", "build"
        system "cmake", "--install", "build"
    end
end
