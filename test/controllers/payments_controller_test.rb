require 'test_helper'

class PaymentsControllerTest < ActionController::TestCase
  setup do
    @payment = payments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:payments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create payment" do
    assert_difference('Payment.count') do
      post :create, payment: { balance_penalty_amount: @payment.balance_penalty_amount, date_paid: @payment.date_paid, due_date: @payment.due_date, grand_total: @payment.grand_total, installment_penalty_amount: @payment.installment_penalty_amount, interest_amount: @payment.interest_amount, or_number: @payment.or_number, principal_amount: @payment.principal_amount, total_payment: @payment.total_payment }
    end

    assert_redirected_to payment_path(assigns(:payment))
  end

  test "should show payment" do
    get :show, id: @payment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @payment
    assert_response :success
  end

  test "should update payment" do
    patch :update, id: @payment, payment: { balance_penalty_amount: @payment.balance_penalty_amount, date_paid: @payment.date_paid, due_date: @payment.due_date, grand_total: @payment.grand_total, installment_penalty_amount: @payment.installment_penalty_amount, interest_amount: @payment.interest_amount, or_number: @payment.or_number, principal_amount: @payment.principal_amount, total_payment: @payment.total_payment }
    assert_redirected_to payment_path(assigns(:payment))
  end

  test "should destroy payment" do
    assert_difference('Payment.count', -1) do
      delete :destroy, id: @payment
    end

    assert_redirected_to payments_path
  end
end
