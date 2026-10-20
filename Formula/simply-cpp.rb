class SimplyCpp < Formula
    desc "Library that wraps common C++ libraries behind one simple, consistent API"
    homepage "https://github.com/roelofrossouw/simply-cpp"
    url "https://github.com/roelofrossouw/simply-cpp/archive/refs/tags/v1.18.0.tar.gz"
    sha256 "b20fd81eb25033e12c840557b6b8af951bdabd2a40a1b4e1285f4099a9d477fd"
    license "Apache-2.0"

    depends_on "cmake" => :build

    def install
        system "cmake", "-S", ".", "-B", "build", *std_cmake_args
        system "cmake", "--build", "build"
        system "cmake", "--install", "build"
    end
end
