// ===================================================================================================
//                           _  __     _ _
//                          | |/ /__ _| | |_ _  _ _ _ __ _
//                          | ' </ _` | |  _| || | '_/ _` |
//                          |_|\_\__,_|_|\__|\_,_|_| \__,_|
//
// This file is part of the Borhan Collaborative Media Suite which allows users
// to do with audio, video, and animation what Wiki platfroms allow them to do with
// text.
//
// Copyright (C) 2006-2011  Borhan Inc.
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Affero General Public License as
// published by the Free Software Foundation, either version 3 of the
// License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Affero General Public License for more details.
//
// You should have received a copy of the GNU Affero General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.
//
// @ignore
// ===================================================================================================
package com.borhan.vo
{
	import com.borhan.vo.BaseFlexVo;

	[Bindable]
	public dynamic class BorhanCategoryUser extends BaseFlexVo
	{
		/**
		**/
		public var categoryId : int = int.MIN_VALUE;

		/**
		* User id
		* 
		**/
		public var userId : String = null;

		/**
		* Partner id
		* 
		**/
		public var partnerId : int = int.MIN_VALUE;

		/**
		* Permission level
		* 
		* @see com.borhan.types.BorhanCategoryUserPermissionLevel
		**/
		public var permissionLevel : int = int.MIN_VALUE;

		/**
		* Status
		* 
		* @see com.borhan.types.BorhanCategoryUserStatus
		**/
		public var status : int = int.MIN_VALUE;

		/**
		* CategoryUser creation date as Unix timestamp (In seconds)
		* 
		**/
		public var createdAt : int = int.MIN_VALUE;

		/**
		* CategoryUser update date as Unix timestamp (In seconds)
		* 
		**/
		public var updatedAt : int = int.MIN_VALUE;

		/**
		* Update method can be either manual or automatic to distinguish between manual operations (for example in BMC) on automatic - using bulk upload
		* 
		* @see com.borhan.types.BorhanUpdateMethodType
		**/
		public var updateMethod : int = int.MIN_VALUE;

		/**
		* The full ids of the Category
		* 
		**/
		public var categoryFullIds : String = null;

		/**
		* Set of category-related permissions for the current category user.
		* 
		**/
		public var permissionNames : String = null;

		/** 
		* a list of attributes which may be updated on this object 
		**/ 
		public function getUpdateableParamKeys():Array
		{
			var arr : Array;
			arr = new Array();
			arr.push('permissionLevel');
			arr.push('updateMethod');
			arr.push('permissionNames');
			return arr;
		}

		/** 
		* a list of attributes which may only be inserted when initializing this object 
		**/ 
		public function getInsertableParamKeys():Array
		{
			var arr : Array;
			arr = new Array();
			arr.push('categoryId');
			arr.push('userId');
			return arr;
		}

		/** 
		* get the expected type of array elements 
		* @param arrayName 	 name of an attribute of type array of the current object 
		* @return 	 un-qualified class name 
		**/ 
		public function getElementType(arrayName:String):String
		{
			var result:String = '';
			switch (arrayName) {
			}
			return result;
		}
	}
}
