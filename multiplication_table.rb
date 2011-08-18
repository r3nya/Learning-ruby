1.upto(10) { |x|
    1.upto(10) { |y|
        print "\n" if y == 1
        print x.to_s + " x " + y.to_s + " = ", x*y, "\n"
    }
}
