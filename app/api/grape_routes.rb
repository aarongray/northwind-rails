# The purpose of this file is to enable optional use of Grape's versioning,
# which injects a v1 in between /api and /categories in our Rails routes.
class GrapeRoutes < Grape::API

  mount Categories

end
