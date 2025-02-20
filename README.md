# Bootstrap Scaffold Generator

A Ruby on Rails gem that customizes the default scaffold generator to create **Bootstrap 5-styled** views. This ensures that every scaffolded page has a **responsive, mobile-friendly, and visually appealing layout** right out of the box.

## 🚀 Features
- **Bootstrap 5 Integration**: Automatically styled scaffold views using Bootstrap.
- **Custom Table Styling**: Uses Bootstrap's table classes for `index.html.erb`.
- **Bootstrap Forms**: Styled forms with error handling.
- **Improved Buttons & Alerts**: Action buttons use Bootstrap button styles.
- **Works with Rails Scaffold**: Seamlessly integrates with `rails generate scaffold`.

## 📦 Installation

### 1️⃣ Add to Your Gemfile (GitHub Installation)
To install directly from GitHub, add this to your Rails **Gemfile**:

```ruby
gem 'bootstrap_scaffold_generator', git: 'https://github.com/<your-github-username>/bootstrap_scaffold_generator'
```

Then, run:

```sh
bundle install
```

### 2️⃣ Local Installation (Development Mode)
If you are developing or testing the gem locally:

```sh
git clone https://github.com/<your-github-username>/bootstrap_scaffold_generator.git
cd bootstrap_scaffold_generator
gem build bootstrap_scaffold_generator.gemspec
gem install ./bootstrap_scaffold_generator-0.1.0.gem
```

Then, in your Rails project **Gemfile**, use:

```ruby
gem 'bootstrap_scaffold_generator', path: '/path/to/your/bootstrap_scaffold_generator'
```

And run:

```sh
bundle install
```

## 🔧 Usage

Once installed, use the standard **Rails scaffold generator**, and it will automatically apply Bootstrap styles:

```sh
rails generate scaffold Post title:string content:text
```

Then, run migrations and start the Rails server:

```sh
rails db:migrate
rails server
```

## 📜 Overridden Scaffold Views
The following scaffold views have been customized with Bootstrap styles:

| View File        | Description                                       |
| ---------------- | ------------------------------------------------- |
| `index.html.erb` | Uses Bootstrap tables for data display            |
| `show.html.erb`  | Styled card layout for details                    |
| `new.html.erb`   | Form with Bootstrap styling                       |
| `edit.html.erb`  | Form with Bootstrap styling                       |
| `_form.html.erb` | Shared form partial with Bootstrap error handling |

## 🎨 Example UI Output
After running `rails generate scaffold`, your views will look like this:

- **Index Page** (Styled Table)
  ```erb
  <table class="table table-striped table-hover">
  ```
- **Forms** (Styled Input Fields)
  ```erb
  <%= form.text_field :title, class: "form-control" %>
  ```
- **Buttons** (Bootstrap Styled)
  ```erb
  <%= link_to "Edit", edit_post_path(@post), class: "btn btn-warning" %>
  ```

## ✨ Customization
If you want to **override the templates**, you can copy them to your Rails project:

```sh
mkdir -p lib/templates/erb/scaffold/
cp -r path/to/gem/lib/templates/erb/scaffold/* lib/templates/erb/scaffold/
```

Modify the ERB templates as needed!

## 🛠 Contributing

1. **Fork the repository**
2. **Clone your fork**
   ```sh
   git clone https://github.com/your-username/bootstrap_scaffold_generator.git
   cd bootstrap_scaffold_generator
   ```
3. **Create a new feature branch**
   ```sh
   git checkout -b feature-new-ui
   ```
4. **Commit your changes**
   ```sh
   git commit -m "Improved button styling"
   ```
5. **Push to GitHub**
   ```sh
   git push origin feature-new-ui
   ```
6. **Create a Pull Request**

## 📜 License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## ⭐️ Show Your Support
Give this repo a ⭐️ if you found it useful!

---

### 🚀 Start using Bootstrap-styled Rails scaffolds today!

