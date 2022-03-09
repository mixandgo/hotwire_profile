module.exports = {
  plugins: [
    require("@tailwindcss/typography"),
    require("tailwind-animatecss"),
    require("daisyui"),
  ],
  themes: ["emerald"],
  content: [
    "./app/views/**/*.html.erb",
    "./app/helpers/**/*.rb",
    "./app/assets/stylesheets/**/*.css",
    "./app/javascript/**/*.js",
  ],
};
