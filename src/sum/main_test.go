package main

import "testing"

func TestSum(t *testing.T) {
	got := sum(100, 60)
	if got != 160 {
		t.Errorf("Sum return = %d; want 160", got)
	}
}
