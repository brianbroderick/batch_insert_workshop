defmodule BatchInsertWorkshop.Payloads.GithubPayload do

  def sample do
    %{
      "nodes" => [
        %{
          "languages" => %{"nodes" => [%{"name" => "Elixir"}, %{"name" => "Shell"}]},
          "name" => "aardvark",
          "url" => "https://github.com/podium/aardvark"
        },
        %{
          "languages" => %{"nodes" => [%{"name" => "Elixir"}, %{"name" => "Shell"}]},
          "name" => "baboon",
          "url" => "https://github.com/podium/baboon"
        },
        %{
          "languages" => %{
            "nodes" => [
              %{"name" => "Ruby"},
              %{"name" => "HTML"},
              %{"name" => "Shell"}
            ]
          },
          "name" => "cheetah",
          "url" => "https://github.com/podium/cheetah"
        },
        %{
          "languages" => %{
            "nodes" => [
              %{"name" => "JavaScript"},
              %{"name" => "Elixir"},
              %{"name" => "CSS"},
              %{"name" => "HTML"},
              %{"name" => "Shell"}
            ]
          },
          "name" => "dalmatian",
          "url" => "https://github.com/podium/dalmatian"
        },
        %{
          "languages" => %{
            "nodes" => [%{"name" => "JavaScript"}, %{"name" => "CSS"}]
          },
          "name" => "emu",
          "url" => "https://github.com/podium/emu"
        },
        %{
          "languages" => %{"nodes" => [%{"name" => "Elixir"}, %{"name" => "Shell"}]},
          "name" => "falcon",
          "url" => "https://github.com/podium/falcon"
        },
        %{
          "languages" => %{
            "nodes" => [
              %{"name" => "TypeScript"},
              %{"name" => "JavaScript"},
              %{"name" => "Shell"}
            ]
          },
          "name" => "grizzly-bear",
          "url" => "https://github.com/podium/grizzly-bear"
        },
        %{
          "languages" => %{
            "nodes" => [
              %{"name" => "HTML"},
              %{"name" => "JavaScript"},
              %{"name" => "CSS"},
              %{"name" => "Shell"}
            ]
          },
          "name" => "hyena",
          "url" => "https://github.com/podium/hyena"
        },
        %{
          "languages" => %{"nodes" => [%{"name" => "C#"}]},
          "name" => "iguana",
          "url" => "https://github.com/podium/iguana"
        },
        %{
          "languages" => %{"nodes" => [%{"name" => "Elixir"}, %{"name" => "Shell"}]},
          "name" => "jackal",
          "url" => "https://github.com/podium/jackal"
        },
        %{
          "languages" => %{
            "nodes" => [
              %{"name" => "JavaScript"},
              %{"name" => "Elixir"},
              %{"name" => "CSS"},
              %{"name" => "HTML"}
            ]
          },
          "name" => "kangaroo",
          "url" => "https://github.com/podium/kangaroo"
        },
        %{
          "languages" => %{"nodes" => [%{"name" => "JavaScript"}]},
          "name" => "leopard",
          "url" => "https://github.com/podium/leopard"
        },
        %{
          "languages" => %{
            "nodes" => [
              %{"name" => "Shell"},
              %{"name" => "Nginx"},
              %{"name" => "Lua"}
            ]
          },
          "name" => "manatee",
          "url" => "https://github.com/podium/manatee"
        },
        %{
          "languages" => %{"nodes" => [%{"name" => "Elixir"}, %{"name" => "Shell"}]},
          "name" => "nightingale",
          "url" => "https://github.com/podium/nightingale"
        },
        %{
          "languages" => %{"nodes" => [%{"name" => "JavaScript"}]},
          "name" => "ocelot",
          "url" => "https://github.com/podium/ocelot"
        },
        %{
          "languages" => %{"nodes" => [%{"name" => "Elixir"}, %{"name" => "HTML"}]},
          "name" => "peacock",
          "url" => "https://github.com/podium/peacock"
        },
        %{
          "languages" => %{
            "nodes" => [
              %{"name" => "Elixir"},
              %{"name" => "JavaScript"},
              %{"name" => "Shell"}
            ]
          },
          "name" => "quail",
          "url" => "https://github.com/podium/quail"
        },
        %{
          "languages" => %{
            "nodes" => [
              %{"name" => "HTML"},
              %{"name" => "JavaScript"},
              %{"name" => "CSS"},
              %{"name" => "Shell"}
            ]
          },
          "name" => "rattlesnake",
          "url" => "https://github.com/podium/rattlesnake"
        },
        %{
          "languages" => %{"nodes" => []},
          "name" => "salamander",
          "url" => "https://github.com/podium/salamander"
        },
        %{
          "languages" => %{
            "nodes" => [
              %{"name" => "JavaScript"},
              %{"name" => "CSS"},
              %{"name" => "HTML"},
              %{"name" => "Shell"}
            ]
          },
          "name" => "turkey",
          "url" => "https://github.com/podium/turkey"
        },
        %{
          "languages" => %{
            "nodes" => [
              %{"name" => "HTML"},
              %{"name" => "CSS"},
              %{"name" => "JavaScript"}
            ]
          },
          "name" => "uakari",
          "url" => "https://github.com/podium/uakari"
        },
        %{
          "languages" => %{
            "nodes" => [
              %{"name" => "Elixir"},
              %{"name" => "JavaScript"},
              %{"name" => "Shell"}
            ]
          },
          "name" => "vulture",
          "url" => "https://github.com/podium/vulture"
        },
        %{
          "languages" => %{
            "nodes" => [%{"name" => "Python"}, %{"name" => "OpenEdge ABL"}]
          },
          "name" => "walrus",
          "url" => "https://github.com/podium/walrus"
        },
        %{
          "languages" => %{"nodes" => [%{"name" => "Elixir"}, %{"name" => "Shell"}]},
          "name" => "x-ray-tetra",
          "url" => "https://github.com/podium/x-ray-tetra"
        },
        %{
          "languages" => %{
            "nodes" => [
              %{"name" => "Elixir"},
              %{"name" => "JavaScript"},
              %{"name" => "Shell"},
              %{"name" => "HTML"}
            ]
          },
          "name" => "yak",
          "url" => "https://github.com/podium/yak"
        },
        %{
          "languages" => %{
            "nodes" => [
              %{"name" => "JavaScript"},
              %{"name" => "CSS"},
              %{"name" => "HTML"}
            ]
          },
          "name" => "zebra",
          "url" => "https://github.com/podium/zebra"
        }
      ],
      "page_info" => %{"end_cursor" => "Y3Vyc29yOnYyOpKmYXRoZW5hzgTEDsI="}
    }
  end
end
