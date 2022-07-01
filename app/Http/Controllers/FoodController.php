<?php

namespace App\Http\Controllers;

use App\Models\Food;
use Illuminate\Http\Request;

class FoodController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $foods=Food::all();
        return view('showFood' ,['food'=>$foods]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('food-create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $name = '';
        
        if($request -> hasFile('image')){
            $this->validate($request,[
                'image' =>'mimes:jpg,png,jpeg|max:4000',
            ],[
                'image.mimes'=>'Chỉ chấp nhận files ảnh',
                'image.max' => 'Chỉ chấp nhận files ảnh dưới 2Mb',

            ]);
            $file =$request ->file(('image'));
            $name = time().'_'.$file->getClientOriginalName();
            $destinationPath=public_path('image');
            $file -> move($destinationPath, $name);
        }
        $this->validate($request,[
            'name'=>'required', 
            'price'=>'required',
        ],[
            'name.required' =>'Bạn chưa nhập mô tả',
            'price.required' =>'Bạn chưa nhập model',
        ]);
        $food=new Food();
        $food->name=$request->name;
        $food->price=$request->price;
        $food->old_price=$request->old_price;
        $food->description=$request->description;
        $food->categories_id=$request->categories_id;
        $food->image=$name;
        $food->save();
    
        return redirect()->route('food.index')->with('success', 'Bạn đã thêm thành công');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $food = Food::find($id);
        return view('detailFood',['food' => $food]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
