.class Lcom/viber/voip/contacts/ui/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 421
    iput-object p1, p0, Lcom/viber/voip/contacts/ui/t;->b:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    iput-object p2, p0, Lcom/viber/voip/contacts/ui/t;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 424
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/t;->a:Ljava/lang/String;

    new-instance v2, Lcom/viber/voip/contacts/ui/u;

    invoke-direct {v2, p0}, Lcom/viber/voip/contacts/ui/u;-><init>(Lcom/viber/voip/contacts/ui/t;)V

    invoke-static {v0, v1, v2}, Lcom/viber/voip/util/hd;->a(Lcom/viber/voip/ViberApplication;Ljava/lang/CharSequence;Lcom/viber/voip/util/hj;)V

    .line 469
    return-void
.end method
