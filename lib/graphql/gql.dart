String scheme = """
query {
  user(id: 1) {
    id
    username
    email
    address {
      geo {
        lat
        lng
      }
    }
  }
}
""";
