<?php


namespace App\Http\Filter;


use Illuminate\Http\Request;


class QueryFilter
{
    public function filter($query, Request $request) {

        if ($request->filled('page') && $request->filled('perpage')) {
            $count = $request->page * $request->perpage;
            $query->skip($count)->take($request->perpage);
        }

        if ($request->filled('sort')) {
            $query->orderBy($request->sort, $request->filled('sorttype') ? $request->sorttype : 'ASC');
        }

        return $query->get();
    }
}
