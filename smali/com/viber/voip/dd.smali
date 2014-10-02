.class final Lcom/viber/voip/dd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/dialer/DialerControllerDelegate$DialerPhoneState;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhoneStateChanged(I)V
    .locals 1
    .parameter

    .prologue
    .line 139
    packed-switch p1, :pswitch_data_0

    .line 144
    sget-object v0, Lcom/viber/voip/dh;->d:Lcom/viber/voip/dh;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dh;)V

    .line 148
    :goto_0
    return-void

    .line 141
    :pswitch_0
    sget-object v0, Lcom/viber/voip/dh;->a:Lcom/viber/voip/dh;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dh;)V

    goto :goto_0

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
