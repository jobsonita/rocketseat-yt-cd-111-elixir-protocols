![License](https://img.shields.io/github/license/jobsonita/rocketseat-yt-cd-111-elixir-protocols?color=blue)
![Erlang version](https://img.shields.io/badge/erlang-OTP_22-brightgreen)
![Elixir version](https://img.shields.io/badge/elixir-v1.12.3-brightgreen)
![Phoenix version](https://img.shields.io/badge/phoenix-~>_1.6.2-blue)

# :rocket::seat: Code/drops #111 - Elixir - Protocols and Polimorphism

A simple project applying the concepts from [Extensibilidade em Elixir com Protocols - Code/drops #111](https://www.youtube.com/watch?v=pFUXbppNpDQ).

## :hammer: Status

> :white_check_mark: Finished :lock:

## :bookmark: Content Table
<!--ts-->
  * [Technologies](#books-technologies)
  * [Install and Run](#calling-installing-and-running-this-project)
  * [Author and License](#memo-author-and-license)
<!--te-->

## :books: Technologies

- [Elixir](https://elixir-lang.org/)
- [Phoenix](https://www.phoenixframework.org/)

## :calling: Installing and running this project

### :wrench: Prerequisites

Before starting, make sure you have [Git](https://git-scm.com/) and [Elixir](https://elixir-lang.org/install.html) (version 1.12 or higher) installed.

### :inbox_tray: Install and run

Clone the project using Git and install its dependencies through Mix:

```bash
git clone https://github.com/jobsonita/rocketseat-yt-cd-111-elixir-protocols.git
# wait for git to finish clonning the project, then navigate to the folder and install the dependencies:

cd rocketseat-yt-cd-111-elixir-protocols

mix deps.get
mix deps.compile
```

Finally, play around with the `describe` protocol and the `Human`, `Child` and `Pet` entities:

```bash
# execute the iex (interactive elixir shell)
iex -S mix
# notice: in PowerShell, you might need to run iex.bat instead

# All commands below are executed in iex:
alias Polimorfismo.Human
alias Polimorfismo.Child
alias Polimorfismo.Pet
import Polimorfismo.Describe

human = %Human{name: "Jhon", age: "42", sex: "Male"}
child = %Child{name: "Sara", age: "12", sex: "Female", parents: ["Jhon"]}
pet = %Pet{animal: "Dog", name: "Ace", age: "12", sex: "Male"}

describe(human)
# will output "This is a human. Name: Jhon, Age: 42, Sex: Male"
describe(child)
# will output "This is a human. Name: Sara, Age: 12, Sex: Female"
describe(pet)
# will output "This is a pet. Animal: Dog, Name: Ace, Age: 12, Sex: Male"

people = [human, child]

describe(people)
# will output "This is a human. Name: Jhon, Age: 42, Sex: Male | This is a human. Name: Sara, Age: 12, Sex: Female"

beings = [human, child, pet]

describe(beings)
# will output "This is a human. Name: Jhon, Age: 42, Sex: Male | This is a human. Name: Sara, Age: 12, Sex: Female | This is a pet. Animal: Dog, Name: Ace, Age: 12, Sex: Male"

describe("string")
# will output {:error, "Unsupported type"}

describe(:atom)
# will output {:error, "Unsupported type"}
```

## :memo: Author and License

[![Author: jobsonita](https://avatars.githubusercontent.com/u/1463583?s=48&v=4)](https://github.com/jobsonita/jobsonita) | [Jobson Gilberto](https://github.com/jobsonita/jobsonita)
-|-

[![License](https://img.shields.io/github/license/jobsonita/rocketseat-yt-cd-111-elixir-protocols)](LICENSE)
