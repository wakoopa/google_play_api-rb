module GooglePlayApi
  module Proto
    # enums
    module AppType
      include ::ProtocolBuffers::Enum
      NONE = 0
      APPLICATION = 1
      RINGTONE = 2
      WALLPAPER = 3
      GAME = 4
    end
  end
end
