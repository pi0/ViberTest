.class Lcom/viber/voip/contacts/ui/at;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/ui/ap;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/ui/ap;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/viber/voip/contacts/ui/at;->a:Lcom/viber/voip/contacts/ui/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/at;->a:Lcom/viber/voip/contacts/ui/ap;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/ui/ap;->onActivitySearchRequested()Z

    .line 139
    return-void
.end method
