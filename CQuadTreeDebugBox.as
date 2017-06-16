package com.quadtree
{
	import flash.display.DisplayObjectContainer;
	import flash.display.Sprite;
	
	public class CQuadTreeDebugBox extends Sprite
	{
		private var m_x:int;
		private var m_y:int;
		private var m_size:uint;
		
		public function CQuadTreeDebugBox(parent:DisplayObjectContainer, pos_x:int, pos_y:int, size:uint)
		{
			parent.addChild(this);
			
			m_x = pos_x;
			m_y = pos_y;
			
			this.x = m_x;
			this.y = m_y;
			
			m_size = size;
		}
		
		public function paint(): void
		{
			this.graphics.clear();
			this.graphics.lineStyle(1, 0, 1);
			this.graphics.drawRect(0, 0, m_size, m_size);
		}
		
		public function drawSubNode(color:uint): void
		{	
			var splitSize:int = Math.floor( m_size / 2 );
			
			this.graphics.lineStyle(1, color , 1);
			
			this.graphics.moveTo(splitSize, 0);
			this.graphics.lineTo(splitSize, m_size);
			
			this.graphics.moveTo(0, splitSize);
			this.graphics.lineTo(m_size, splitSize);
		}
	}
}