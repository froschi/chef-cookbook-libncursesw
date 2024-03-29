packages = Array.new

case node[:lsb][:codename]
when "lucid"
  packages |= %w/
    libncursesw5
  /
when "precise"
  packages |= %w/
    libncursesw5
  /
end

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
