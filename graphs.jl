
using Plots


t() = range(-4.0, 4.0, step=0.01)
zerooo() = zeros(length( t() ))
oneeee() = ones( length( t() ))

x() = sin.( t() )   # x = sin(t)
y() = sin.( t() ) .* cos.( t() )    # y = sin(t)cos(t)
z() = .- (x() .^2) .- 0.5 .* y() #  z = -2x^2 - y

# The system:
#   x^4 = x^2 - y^2
#   -2z = 2x^2 + y

# The system to show:
#     z^2 + 2*x^2*z = -x^2*y - x^2 + 3//4*y^2 - y*z
#     -y  = 2*x^2 + 2*z
#

# thickness_scaling = 2
plot(x(), y(), z(),
      thickness_scaling = 2.5, label="",
      # xticks=:none, yticks=:none, zticks=:none,
      #minorgrid=true,
      tickfontsize=1, tickfontcolor=:white,
      #linewidth=1,
      )


plot!(zlabel="z", guidefontsize=6)
plot!(xlabel="x", guidefontsize=6)
plot!(ylabel="y", guidefontsize=6)

savefig("C:\\data\\projects\\youthtalk\\uwu_1.pdf")
savefig("C:\\data\\projects\\youthtalk\\uwu_1.png")

sealevel = -1.24
plot!(x(), y(), sealevel .* oneeee(),
            label="",
            line=(1, :dash, 0.5, [:green]))


for i in [200, 300, 500, 600]
      plot!([x()[i], x()[i]], [y()[i], y()[i]], [z()[i], sealevel],
                  arrow=true,label="", alpha=0.4,
                  line=(1, :dash, 0.15, [:green]))
end
current()

# plot!(x(), 0.7 .* oneeee(), z() )

# plot!(z().^2 + 2.*z().*x().^2 + (5//4).*x().^4 - (1//4).*x().^2)

savefig("C:\\data\\projects\\youthtalk\\uwu_2.pdf")
savefig("C:\\data\\projects\\youthtalk\\uwu_2.png")
