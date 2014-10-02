.class synthetic Lcom/viber/voip/contacts/ui/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1213
    invoke-static {}, Lcom/viber/voip/contacts/ui/ad;->values()[Lcom/viber/voip/contacts/ui/ad;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/viber/voip/contacts/ui/q;->b:[I

    :try_start_0
    sget-object v0, Lcom/viber/voip/contacts/ui/q;->b:[I

    sget-object v1, Lcom/viber/voip/contacts/ui/ad;->b:Lcom/viber/voip/contacts/ui/ad;

    invoke-virtual {v1}, Lcom/viber/voip/contacts/ui/ad;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v0, Lcom/viber/voip/contacts/ui/q;->b:[I

    sget-object v1, Lcom/viber/voip/contacts/ui/ad;->a:Lcom/viber/voip/contacts/ui/ad;

    invoke-virtual {v1}, Lcom/viber/voip/contacts/ui/ad;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    .line 1071
    :goto_1
    invoke-static {}, Lcom/viber/voip/contacts/ui/ah;->values()[Lcom/viber/voip/contacts/ui/ah;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/viber/voip/contacts/ui/q;->a:[I

    :try_start_2
    sget-object v0, Lcom/viber/voip/contacts/ui/q;->a:[I

    sget-object v1, Lcom/viber/voip/contacts/ui/ah;->a:Lcom/viber/voip/contacts/ui/ah;

    invoke-virtual {v1}, Lcom/viber/voip/contacts/ui/ah;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v0, Lcom/viber/voip/contacts/ui/q;->a:[I

    sget-object v1, Lcom/viber/voip/contacts/ui/ah;->b:Lcom/viber/voip/contacts/ui/ah;

    invoke-virtual {v1}, Lcom/viber/voip/contacts/ui/ah;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    .line 1213
    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method
