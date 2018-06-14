defmodule BatchInsertWorkshop.Model do
  @moduledoc """
  The Model context.
  """

  import Ecto.Query, warn: false
  alias BatchInsertWorkshop.Repo

  alias BatchInsertWorkshop.Model.GitRepo

  @doc """
  Returns the list of git_repos.

  ## Examples

      iex> list_git_repos()
      [%GitRepo{}, ...]

  """
  def list_git_repos do
    Repo.all(GitRepo)
  end

  @doc """
  Gets a single git_repo.

  Raises `Ecto.NoResultsError` if the Git repo does not exist.

  ## Examples

      iex> get_git_repo!(123)
      %GitRepo{}

      iex> get_git_repo!(456)
      ** (Ecto.NoResultsError)

  """
  def get_git_repo!(id), do: Repo.get!(GitRepo, id)

  @doc """
  Creates a git_repo.

  ## Examples

      iex> create_git_repo(%{field: value})
      {:ok, %GitRepo{}}

      iex> create_git_repo(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_git_repo(attrs \\ %{}) do
    %GitRepo{}
    |> GitRepo.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a git_repo.

  ## Examples

      iex> update_git_repo(git_repo, %{field: new_value})
      {:ok, %GitRepo{}}

      iex> update_git_repo(git_repo, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_git_repo(%GitRepo{} = git_repo, attrs) do
    git_repo
    |> GitRepo.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a GitRepo.

  ## Examples

      iex> delete_git_repo(git_repo)
      {:ok, %GitRepo{}}

      iex> delete_git_repo(git_repo)
      {:error, %Ecto.Changeset{}}

  """
  def delete_git_repo(%GitRepo{} = git_repo) do
    Repo.delete(git_repo)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking git_repo changes.

  ## Examples

      iex> change_git_repo(git_repo)
      %Ecto.Changeset{source: %GitRepo{}}

  """
  def change_git_repo(%GitRepo{} = git_repo) do
    GitRepo.changeset(git_repo, %{})
  end

  alias BatchInsertWorkshop.Model.Language

  @doc """
  Returns the list of languages.

  ## Examples

      iex> list_languages()
      [%Language{}, ...]

  """
  def list_languages do
    Repo.all(Language)
  end

  @doc """
  Gets a single language.

  Raises `Ecto.NoResultsError` if the Language does not exist.

  ## Examples

      iex> get_language!(123)
      %Language{}

      iex> get_language!(456)
      ** (Ecto.NoResultsError)

  """
  def get_language!(id), do: Repo.get!(Language, id)

  @doc """
  Creates a language.

  ## Examples

      iex> create_language(%{field: value})
      {:ok, %Language{}}

      iex> create_language(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_language(attrs \\ %{}) do
    %Language{}
    |> Language.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a language.

  ## Examples

      iex> update_language(language, %{field: new_value})
      {:ok, %Language{}}

      iex> update_language(language, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_language(%Language{} = language, attrs) do
    language
    |> Language.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Language.

  ## Examples

      iex> delete_language(language)
      {:ok, %Language{}}

      iex> delete_language(language)
      {:error, %Ecto.Changeset{}}

  """
  def delete_language(%Language{} = language) do
    Repo.delete(language)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking language changes.

  ## Examples

      iex> change_language(language)
      %Ecto.Changeset{source: %Language{}}

  """
  def change_language(%Language{} = language) do
    Language.changeset(language, %{})
  end

  alias BatchInsertWorkshop.Model.PackageRepo

  @doc """
  Returns the list of package_repos.

  ## Examples

      iex> list_package_repos()
      [%PackageRepo{}, ...]

  """
  def list_package_repos do
    Repo.all(PackageRepo)
  end

  @doc """
  Gets a single package_repo.

  Raises `Ecto.NoResultsError` if the Package repo does not exist.

  ## Examples

      iex> get_package_repo!(123)
      %PackageRepo{}

      iex> get_package_repo!(456)
      ** (Ecto.NoResultsError)

  """
  def get_package_repo!(id), do: Repo.get!(PackageRepo, id)

  @doc """
  Creates a package_repo.

  ## Examples

      iex> create_package_repo(%{field: value})
      {:ok, %PackageRepo{}}

      iex> create_package_repo(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_package_repo(attrs \\ %{}) do
    %PackageRepo{}
    |> PackageRepo.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a package_repo.

  ## Examples

      iex> update_package_repo(package_repo, %{field: new_value})
      {:ok, %PackageRepo{}}

      iex> update_package_repo(package_repo, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_package_repo(%PackageRepo{} = package_repo, attrs) do
    package_repo
    |> PackageRepo.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a PackageRepo.

  ## Examples

      iex> delete_package_repo(package_repo)
      {:ok, %PackageRepo{}}

      iex> delete_package_repo(package_repo)
      {:error, %Ecto.Changeset{}}

  """
  def delete_package_repo(%PackageRepo{} = package_repo) do
    Repo.delete(package_repo)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking package_repo changes.

  ## Examples

      iex> change_package_repo(package_repo)
      %Ecto.Changeset{source: %PackageRepo{}}

  """
  def change_package_repo(%PackageRepo{} = package_repo) do
    PackageRepo.changeset(package_repo, %{})
  end

  alias BatchInsertWorkshop.Model.Package

  @doc """
  Returns the list of packages.

  ## Examples

      iex> list_packages()
      [%Package{}, ...]

  """
  def list_packages do
    Repo.all(Package)
  end

  @doc """
  Gets a single package.

  Raises `Ecto.NoResultsError` if the Package does not exist.

  ## Examples

      iex> get_package!(123)
      %Package{}

      iex> get_package!(456)
      ** (Ecto.NoResultsError)

  """
  def get_package!(id), do: Repo.get!(Package, id)

  @doc """
  Creates a package.

  ## Examples

      iex> create_package(%{field: value})
      {:ok, %Package{}}

      iex> create_package(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_package(attrs \\ %{}) do
    %Package{}
    |> Package.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a package.

  ## Examples

      iex> update_package(package, %{field: new_value})
      {:ok, %Package{}}

      iex> update_package(package, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_package(%Package{} = package, attrs) do
    package
    |> Package.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Package.

  ## Examples

      iex> delete_package(package)
      {:ok, %Package{}}

      iex> delete_package(package)
      {:error, %Ecto.Changeset{}}

  """
  def delete_package(%Package{} = package) do
    Repo.delete(package)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking package changes.

  ## Examples

      iex> change_package(package)
      %Ecto.Changeset{source: %Package{}}

  """
  def change_package(%Package{} = package) do
    Package.changeset(package, %{})
  end

  alias BatchInsertWorkshop.Model.RepoLanguage

  @doc """
  Returns the list of repo_languages.

  ## Examples

      iex> list_repo_languages()
      [%RepoLanguage{}, ...]

  """
  def list_repo_languages do
    Repo.all(RepoLanguage)
  end

  @doc """
  Gets a single repo_language.

  Raises `Ecto.NoResultsError` if the Repo language does not exist.

  ## Examples

      iex> get_repo_language!(123)
      %RepoLanguage{}

      iex> get_repo_language!(456)
      ** (Ecto.NoResultsError)

  """
  def get_repo_language!(id), do: Repo.get!(RepoLanguage, id)

  @doc """
  Creates a repo_language.

  ## Examples

      iex> create_repo_language(%{field: value})
      {:ok, %RepoLanguage{}}

      iex> create_repo_language(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_repo_language(attrs \\ %{}) do
    %RepoLanguage{}
    |> RepoLanguage.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a repo_language.

  ## Examples

      iex> update_repo_language(repo_language, %{field: new_value})
      {:ok, %RepoLanguage{}}

      iex> update_repo_language(repo_language, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_repo_language(%RepoLanguage{} = repo_language, attrs) do
    repo_language
    |> RepoLanguage.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a RepoLanguage.

  ## Examples

      iex> delete_repo_language(repo_language)
      {:ok, %RepoLanguage{}}

      iex> delete_repo_language(repo_language)
      {:error, %Ecto.Changeset{}}

  """
  def delete_repo_language(%RepoLanguage{} = repo_language) do
    Repo.delete(repo_language)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking repo_language changes.

  ## Examples

      iex> change_repo_language(repo_language)
      %Ecto.Changeset{source: %RepoLanguage{}}

  """
  def change_repo_language(%RepoLanguage{} = repo_language) do
    RepoLanguage.changeset(repo_language, %{})
  end
end
