def fibs(n)
    x=0
    y=1
    i=2
    sum=0
    if n==0
        sum=0
    elsif n==1
        sum=1
    else
        while i<=n && n!=0
            sum=x+y
            x=y
            y=sum
            i+=1
        end
    end
    return sum
end

def fibs_rec(n)
    if n==0 || n==1
        return n
    else
        return fibs_rec(n-1)+fibs_rec(n-2)
    end
end
x = gets.chop.to_i
puts fibs_rec(x)
