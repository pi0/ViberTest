.class Lcom/viber/voip/contacts/ui/bz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/c/d/h;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/ui/InviteContactsListActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/ui/InviteContactsListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/viber/voip/contacts/ui/bz;->a:Lcom/viber/voip/contacts/ui/InviteContactsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLcom/viber/voip/contacts/b/b;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bz;->a:Lcom/viber/voip/contacts/ui/InviteContactsListActivity;

    new-instance v1, Lcom/viber/voip/contacts/ui/ca;

    invoke-direct {v1, p0}, Lcom/viber/voip/contacts/ui/ca;-><init>(Lcom/viber/voip/contacts/ui/bz;)V

    invoke-static {v0, p2, v1}, Lcom/viber/voip/util/w;->a(Landroid/content/Context;Lcom/viber/voip/contacts/b/b;Lcom/viber/voip/util/ah;)V

    .line 56
    return-void
.end method
