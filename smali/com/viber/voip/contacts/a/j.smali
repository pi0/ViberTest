.class public Lcom/viber/voip/contacts/a/j;
.super Lcom/viber/voip/messages/conversation/a/a;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/conversation/a/c;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/viber/voip/contacts/a/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/contacts/a/j;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/LayoutInflater;)V
    .locals 2
    .parameter

    .prologue
    const v1, 0x7f03001a

    .line 22
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/conversation/a/a;-><init>(Landroid/view/LayoutInflater;)V

    .line 24
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, p0}, Lcom/viber/voip/contacts/a/j;->a(IILcom/viber/voip/messages/conversation/a/c;)V

    .line 25
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1, p0}, Lcom/viber/voip/contacts/a/j;->a(IILcom/viber/voip/messages/conversation/a/c;)V

    .line 26
    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 30
    invoke-virtual {p0, p1}, Lcom/viber/voip/contacts/a/j;->b(I)Lcom/viber/voip/messages/conversation/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/a/d;->a()Landroid/view/View;

    move-result-object v0

    .line 32
    return-object v0
.end method

.method public a(Landroid/view/View;I)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 41
    packed-switch p2, :pswitch_data_0

    .line 47
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "INVALID VIEW TYPE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :pswitch_0
    const v0, 0x7f07009c

    new-instance v1, Lcom/viber/voip/ui/ak;

    invoke-direct {v1}, Lcom/viber/voip/ui/ak;-><init>()V

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 45
    new-instance v0, Lcom/viber/voip/contacts/a/l;

    invoke-direct {v0, p1, p2}, Lcom/viber/voip/contacts/a/l;-><init>(Landroid/view/View;I)V

    return-object v0

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
