module nli_0017
use kind_values
use lattice
use proclist_constants
implicit none
contains
pure function nli_reaction_oxygen_cus_co_cus_up(cell)
    integer(kind=iint), dimension(4), intent(in) :: cell
    integer(kind=iint) :: nli_reaction_oxygen_cus_co_cus_up

    select case(get_species(cell + (/0, 0, 0, ruo2_cus/)))
      case(oxygen)
        select case(get_species(cell + (/0, 1, 0, ruo2_cus/)))
          case(co)
            nli_reaction_oxygen_cus_co_cus_up = reaction_oxygen_cus_co_cus_up; return
          case default
            nli_reaction_oxygen_cus_co_cus_up = 0; return
        end select
      case default
        nli_reaction_oxygen_cus_co_cus_up = 0; return
    end select

end function nli_reaction_oxygen_cus_co_cus_up

end module
