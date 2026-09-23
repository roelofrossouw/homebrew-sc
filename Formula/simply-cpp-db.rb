class SimplyCppDb < Formula
    desc "C++20 wrapper around libpq for PostgreSQL, other databases to follow"
    homepage "https://github.com/roelofrossouw/simply-cpp-db"
    url "https://github.com/roelofrossouw/simply-cpp-db/archive/refs/tags/v1.0.6.tar.gz"
    sha256 "80b0f15adf46ab9649fe4dfaf2a4c552790d5c4407b04c6abc0338ff0032834c"
    license "Apache-2.0"

    depends_on "cmake" => :build
    depends_on "postgresql"

    def install
        system "cmake", "-S", ".", "-B", "build", *std_cmake_args
        system "cmake", "--build", "build"
        system "cmake", "--install", "build"
    end
end
