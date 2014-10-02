.class public interface abstract Lcom/viber/service/contacts/sync/a/a/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 605
    sget-object v0, Lcom/viber/provider/contacts/d;->h:Landroid/net/Uri;

    sput-object v0, Lcom/viber/service/contacts/sync/a/a/k;->a:Landroid/net/Uri;

    .line 613
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "phonebookrawcontact._id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "phonebookcontact.contact_hash"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "phonebookcontact._id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "phonebookcontact.version"

    aput-object v2, v0, v1

    sput-object v0, Lcom/viber/service/contacts/sync/a/a/k;->b:[Ljava/lang/String;

    return-void
.end method
