        # This is the inner loop of mandel_ref
        # Parameters are passed to the function as follows:
        #   %xmm0: c_re
        #   %xmm1: c_im
        #   %edi:  count
        # Before entering the loop, the function sets registers
	# to initialize local variables:
        #   %xmm2: z_re = c_re
        #   %xmm3: z_im = c_im
        #   %eax:  i = 0
.L123:
        vmulss  %xmm2, %xmm2, %xmm4 # xmm4 = xmm2^2
        vmulss  %xmm3, %xmm3, %xmm5 # xmm5 = xmm3^2
        vaddss  %xmm5, %xmm4, %xmm6 # xmm6 = xmm4 + xmm5
        vucomiss        .LC0(%rip), %xmm6 # compare xmm6 and 4.f, 
                                          # correspond to line if (z_re * z_re + z_im * z_im > 4.f)
        ja      .L126               # if xmm6 > 4.f break
        vaddss  %xmm2, %xmm2, %xmm2 # xmm2 *= 2
        addl    $1, %eax            # i++
        cmpl    %edi, %eax   # Set condition codes for jne below, compare i and count
        vmulss  %xmm3, %xmm2, %xmm3 # xmm3 = xmm2 * xmm3
                                    # correspond to line float new_im = 2.f * z_re * z_im;
        vsubss  %xmm5, %xmm4, %xmm2 # xmm2 = xmm4 - xmm5
                                    # correspond to line float new_re = z_re * z_re - z_im * z_im;
        vaddss  %xmm3, %xmm1, %xmm3 # xmm3 += xmm1
                                    # correspond to line z_im = c_im + new_im;
        vaddss  %xmm2, %xmm0, %xmm2 # xmm2 += xmm0
                                    # correspond to line z_re = c_re + new_re;
        jne     .L123        # if i != count, jump to .L123 and loop again
