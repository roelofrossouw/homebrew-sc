class SimplyCppDb < Formula
    desc "C++20 wrapper around libpq for PostgreSQL, other databases to follow"
    homepage "https://github.com/roelofrossouw/simply-cpp-db"
    url "https://github.com/roelofrossouw/simply-cpp-db/archive/refs/tags/v3.0.0.tar.gz"
    sha256 "e40be80d6143f7ce4e1a48002551a5f95e145ff03c12349f0ad4abe1ee2397b6"
    license "Apache-2.0"

    depends_on "cmake" => :build
    depends_on "simply-cpp"
    depends_on "libpq"

    def install
        system "cmake", "-S", ".", "-B", "build", "-DSC_DB_BUILD_TESTS=OFF", *std_cmake_args
        system "cmake", "--build", "build"
        system "cmake", "--install", "build"
    end
end
