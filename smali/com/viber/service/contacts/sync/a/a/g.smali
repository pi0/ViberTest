.class public interface abstract Lcom/viber/service/contacts/sync/a/a/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 670
    sget-object v0, Lcom/viber/provider/contacts/d;->f:Landroid/net/Uri;

    sput-object v0, Lcom/viber/service/contacts/sync/a/a/g;->a:Landroid/net/Uri;

    .line 685
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "phonebookcontact._id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "phonebookcontact.contact_hash"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "phonebookcontact.version"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "phonebookcontact.display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "phonebookdata.raw_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "phonebookdata.data2"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "vibernumbers.canonized_number"

    aput-object v2, v0, v1

    sput-object v0, Lcom/viber/service/contacts/sync/a/a/g;->b:[Ljava/lang/String;

    return-void
.end method
