.class Lcom/viber/voip/registration/cw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/registration/SelectCountryActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/registration/SelectCountryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/viber/voip/registration/cw;->a:Lcom/viber/voip/registration/SelectCountryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/viber/voip/registration/cw;->a:Lcom/viber/voip/registration/SelectCountryActivity;

    invoke-static {v0}, Lcom/viber/voip/registration/SelectCountryActivity;->b(Lcom/viber/voip/registration/SelectCountryActivity;)V

    .line 97
    const/4 v0, 0x0

    return v0
.end method
