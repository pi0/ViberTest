.class Lcom/viber/voip/registration/aj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Lcom/viber/voip/registration/ai;


# direct methods
.method constructor <init>(Lcom/viber/voip/registration/ai;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/viber/voip/registration/aj;->a:Lcom/viber/voip/registration/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter

    .prologue
    .line 60
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 65
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 62
    :pswitch_0
    iget-object v0, p0, Lcom/viber/voip/registration/aj;->a:Lcom/viber/voip/registration/ai;

    invoke-virtual {v0}, Lcom/viber/voip/registration/ai;->d()V

    goto :goto_0

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
