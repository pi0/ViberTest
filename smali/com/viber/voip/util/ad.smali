.class final Lcom/viber/voip/util/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# instance fields
.field final synthetic a:[Lcom/viber/voip/contacts/b/g;

.field final synthetic b:Lcom/viber/voip/util/ai;


# direct methods
.method constructor <init>([Lcom/viber/voip/contacts/b/g;Lcom/viber/voip/util/ai;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 434
    iput-object p1, p0, Lcom/viber/voip/util/ad;->a:[Lcom/viber/voip/contacts/b/g;

    iput-object p2, p0, Lcom/viber/voip/util/ad;->b:Lcom/viber/voip/util/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 437
    iget-object v0, p0, Lcom/viber/voip/util/ad;->a:[Lcom/viber/voip/contacts/b/g;

    aget-object v0, v0, p2

    invoke-interface {v0}, Lcom/viber/voip/contacts/b/g;->b()Ljava/lang/String;

    move-result-object v0

    .line 438
    if-eqz p3, :cond_0

    .line 441
    iget-object v1, p0, Lcom/viber/voip/util/ad;->b:Lcom/viber/voip/util/ai;

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0}, Lcom/viber/voip/util/ai;->a(ZLjava/lang/String;)V

    .line 447
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 448
    return-void

    .line 445
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/util/ad;->b:Lcom/viber/voip/util/ai;

    invoke-interface {v1, v0}, Lcom/viber/voip/util/ai;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
