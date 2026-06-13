template <class used_enum>
class enum_to_type_map{
public:
    using enum_type = used_enum;

    template <enum_type K,typename V>
    struct elem{
        static constexpr enum_type value =  K;
        using type =V;
    };
private:
    template <typename elem,typename ... elems>
    struct m_map{
        static constexpr bool has_next = true;
        using Tag = elem;
        using next = m_map<elems...>;
    };

    template <typename elem>
    struct m_map<elem>{
        static constexpr bool has_next = false;
        using Tag = elem;
    };

    static consteval bool enums_are_same(enum_type a,enum_type b){
        return a == b;
    }


    template <bool s,typename T,enum_type val>
    struct m_get_type{}; 

    template <typename T,enum_type val>
    struct m_get_type<true,T,val>{
        using type =  typename T::Tag::type;
    }; 
    template <bool next_exists,typename T,enum_type val>
    struct m_get_type_if_next{};

    template <typename T,enum_type val>
    struct m_get_type_if_next<true,T,val>{
        using type = typename m_get_type<enums_are_same(val,T::next::Tag::value),typename T::next,val>::type;
    };
    
    template <typename T,enum_type val>
    struct m_get_type_if_next<false,T,val>{
        static_assert(false,"enum_to_map: a value without a mapped type to it provided to enum_to_map::get_type");
        using type = void;
    };

    template <typename T,enum_type val>
    struct m_get_type<false,T,val>{
        using type = typename m_get_type_if_next<T::has_next,T,val>::type;
    };



    template<enum_type key,typename m_map>
    using get_type = typename m_get_type<enums_are_same(key,m_map::Tag::value),m_map,key>::type;
    
public:
    template <typename ... elems>
    class map{
    private:
        using m_internal_map = m_map<elems...>;
    public:
        template<enum_type key>
        using get_type = typename m_get_type<enums_are_same(key,m_internal_map::Tag::value),m_internal_map,key>::type;


    };
};
template <auto val,typename T>
using type_map_elem = typename enum_to_type_map<decltype(val)>::elem<val,T>;