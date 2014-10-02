.class Lcom/viber/voip/contacts/ui/ca;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/ah;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/ui/bz;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/ui/bz;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/viber/voip/contacts/ui/ca;->a:Lcom/viber/voip/contacts/ui/bz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ca;->a:Lcom/viber/voip/contacts/ui/bz;

    iget-object v0, v0, Lcom/viber/voip/contacts/ui/bz;->a:Lcom/viber/voip/contacts/ui/InviteContactsListActivity;

    invoke-static {v0, p1}, Lcom/viber/voip/contacts/ui/bp;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 54
    return-void
.end method
