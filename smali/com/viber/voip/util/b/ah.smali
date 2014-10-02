.class public Lcom/viber/voip/util/b/ah;
.super Lcom/viber/voip/util/b/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/viber/voip/util/b/a",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/viber/voip/util/b/ad;


# direct methods
.method protected constructor <init>(Lcom/viber/voip/util/b/ad;)V
    .locals 0
    .parameter

    .prologue
    .line 799
    iput-object p1, p0, Lcom/viber/voip/util/b/ah;->a:Lcom/viber/voip/util/b/ad;

    invoke-direct {p0}, Lcom/viber/voip/util/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 799
    invoke-virtual {p0, p1}, Lcom/viber/voip/util/b/ah;->d([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs d([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 2
    .parameter

    .prologue
    .line 803
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 820
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 805
    :pswitch_0
    iget-object v0, p0, Lcom/viber/voip/util/b/ah;->a:Lcom/viber/voip/util/b/ad;

    invoke-virtual {v0}, Lcom/viber/voip/util/b/ad;->c()V

    goto :goto_0

    .line 808
    :pswitch_1
    iget-object v0, p0, Lcom/viber/voip/util/b/ah;->a:Lcom/viber/voip/util/b/ad;

    invoke-virtual {v0}, Lcom/viber/voip/util/b/ad;->a()V

    goto :goto_0

    .line 811
    :pswitch_2
    iget-object v0, p0, Lcom/viber/voip/util/b/ah;->a:Lcom/viber/voip/util/b/ad;

    invoke-virtual {v0}, Lcom/viber/voip/util/b/ad;->d()V

    goto :goto_0

    .line 814
    :pswitch_3
    iget-object v0, p0, Lcom/viber/voip/util/b/ah;->a:Lcom/viber/voip/util/b/ad;

    invoke-virtual {v0}, Lcom/viber/voip/util/b/ad;->e()V

    goto :goto_0

    .line 817
    :pswitch_4
    iget-object v0, p0, Lcom/viber/voip/util/b/ah;->a:Lcom/viber/voip/util/b/ad;

    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/b/ad;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 803
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
