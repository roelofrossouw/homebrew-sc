class SimplyCpp < Formula
    desc "Simply C++ framework"
    homepage "https://github.com/roelofrossouw/simply-cpp"
    url "https://github.com/roelofrossouw/simply-cpp/archive/refs/tags/v1.1.5.tar.gz"
    sha256 "0565511508ed4657a866552fa0c8e80064c13b852f2fde7a37f095ecd7fcb94a"
    license "MIT"

    depends_on "cmake" => :build

    def install
        system "cmake", "-S", ".", "-B", "build", *std_cmake_args
        system "cmake", "--build", "build"
        system "cmake", "--install", "build"
    end

end

