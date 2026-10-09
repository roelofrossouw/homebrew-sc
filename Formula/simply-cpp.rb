class SimplyCpp < Formula
    desc "Library that wraps common C++ libraries behind one simple, consistent API"
    homepage "https://github.com/roelofrossouw/simply-cpp"
    url "https://github.com/roelofrossouw/simply-cpp/archive/refs/tags/v1.5.18.tar.gz"
    sha256 "7ea74239cf5b5507a351878c84e91af824b70c7627f66d1933b8291da68fa894"
    license "Apache-2.0"

    depends_on "cmake" => :build

    def install
        system "cmake", "-S", ".", "-B", "build", *std_cmake_args
        system "cmake", "--build", "build"
        system "cmake", "--install", "build"
    end
end
