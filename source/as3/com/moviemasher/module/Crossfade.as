﻿/*
* This Source Code Form is subject to the terms of the Mozilla Public
* License, v. 2.0. If a copy of the MPL was not distributed with this
* file, You can obtain one at http://mozilla.org/MPL/2.0/.
* 
* Software distributed under the License is distributed on an
* "AS IS" basis, WITHOUT WARRANTY OF ANY KIND, either express
* or implied. See the License for the specific language
* governing rights and limitations under the License.
* 
* The Original Code is 'Movie Masher'. The Initial Developer
* of the Original Code is Doug Anarino. Portions created by
* Doug Anarino are Copyright (C) 2007-2012 Movie Masher, Inc.
* All Rights Reserved.
*/

package com.moviemasher.module
{
	import flash.geom.*;
	import flash.display.*;
	import com.moviemasher.type.*;
	import com.moviemasher.constant.*;
	import com.moviemasher.interfaces.*;

/**
* Implementation class for crossfade transition module
*
* @see IModule
* @see Transition
* @see Mash
*/
	public class Crossfade extends ModuleTransition
	{
		override public function set time(object:Time):void
		{
			super.time = object;
			var colortransform:ColorTransform = new ColorTransform();
			colortransform.alphaMultiplier = _clipCompleted();
			_transitionColorTransform = colortransform;
		}
	}
}